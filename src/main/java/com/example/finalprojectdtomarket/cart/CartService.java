package com.example.finalprojectdtomarket.cart;

import com.example.finalprojectdtomarket._core.errors.exception.ApiException400;
import com.example.finalprojectdtomarket._core.errors.exception.Exception404;
import com.example.finalprojectdtomarket.product.Product;
import com.example.finalprojectdtomarket.product.ProductJPARepository;
import com.example.finalprojectdtomarket.user.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RequiredArgsConstructor
@Service
public class CartService {
    private final CartJPARepository cartRepo;
    private final ProductJPARepository productRepo;


    //cart-save
    @Transactional
    public void cartSave(CartRequest.saveDTO requestDTO, User sessionUser) {
        //장바구니에 존재하지 않는 상품을 넣을 수도 있으니까
        Product product = productRepo.findById(requestDTO.getProductId())
                        .orElseThrow(() -> new Exception404("상품이 존재하지 않습니다"));

        Cart cart = cartRepo.findByUserAndProduct(sessionUser.getId(), requestDTO.getProductId());

        if (cart != null) {
            cart.setOrderQty(cart.getOrderQty() + requestDTO.getOrderQty());
        } else {
            cartRepo.save(requestDTO.toEntity(sessionUser, product));
        }
    }


    //cart-list용
    public List<CartResponse.ListDTO> getCartList(Integer userId) {
        List<Cart> carts = cartRepo.findByCartUserId(userId);
        
        List<CartResponse.ListDTO> cartList = carts.stream().map(cart -> new CartResponse.ListDTO(cart)).toList();
//        System.out.println("respDTO = " + respDTO);

//        System.out.println("사이즈 몇? " + size);

        Integer indexNum = cartList.size();
        for (CartResponse.ListDTO cart : cartList) {
            cart.setIndexNum(indexNum--);
        }


        return cartList;
    }

    //cart-update
    @Transactional
    public void updateCart(List<CartRequest.UpdateDTO> reqDTOs) {
        //cart id 검증
        for (CartRequest.UpdateDTO reqDTO : reqDTOs) {
            Cart cart = cartRepo.findById(reqDTO.getCartId())
                    .orElseThrow(() -> new Exception404("장바구니에 존재하지 않습니다."));

            Cart qty = cartRepo.findByQtyWithId(reqDTO.getCartId());
            if (reqDTO.getOrderQty() > qty.getProduct().getQty()) {
//                System.out.println("재고 부족 - 재고 수량: " + qty.getProduct().getQty() + ", 구매 요청 수량: " + reqDTO.getOrderQty());
                throw new ApiException400("재고 부족! 구매 불가");
            }

            //카트 수량이랑 isCheckd 업데이트 치기
            cart.setOrderQty(reqDTO.getOrderQty());
            cart.setIsChecked(reqDTO.getIsChecked());

        }

    }
}

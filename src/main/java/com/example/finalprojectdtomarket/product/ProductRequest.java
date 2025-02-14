package com.example.finalprojectdtomarket.product;

import com.example.finalprojectdtomarket.category.Category;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import com.example.finalprojectdtomarket._core.common.ImgSaveUtil;

public class ProductRequest {

    @Data
    public static class UpdateDTO {
        private String name;
        private Integer price;
        private Integer qty;
        private Integer categoryId;
        private MultipartFile img;
    }

    //상품 등록
    @Data
    public static class SaveDTO{
        private String name;
        private Integer price;
        private Integer qty;
        private Integer categoryId;
        private MultipartFile img;


        public Product toEntity(Category category){
            String imgFileName = ImgSaveUtil.save(img);
            return Product.builder()
                    .img(imgFileName)
                    .name(name)
                    .price(price)
                    .qty(qty)
                    .category(category)
                    .build();
        }
    }
}

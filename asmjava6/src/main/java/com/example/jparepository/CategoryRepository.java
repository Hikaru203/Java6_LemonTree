package com.example.jparepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.entity.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
    // Các phương thức truy vấn dữ liệu cho Entity Category
}

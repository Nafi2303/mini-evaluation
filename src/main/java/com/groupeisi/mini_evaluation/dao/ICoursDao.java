package com.groupeisi.mini_evaluation.dao;

import com.groupeisi.mini_evaluation.entities.CoursEntity;

import java.util.Optional;

public interface ICoursDao extends Repository<CoursEntity> {

    Optional<CoursEntity> findById(Long id);

    boolean update(CoursEntity coursEntity);
}

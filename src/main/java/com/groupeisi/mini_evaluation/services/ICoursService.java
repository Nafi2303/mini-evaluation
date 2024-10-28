package com.groupeisi.mini_evaluation.services;

import com.groupeisi.mini_evaluation.dto.CoursDto;

import java.util.List;
import java.util.Optional;

public interface ICoursService {
    Optional<List<CoursDto>> findAll();

    boolean save(CoursDto coursDto);

    Optional<CoursDto> findById(Long id);

    boolean update(CoursDto coursDto);
}

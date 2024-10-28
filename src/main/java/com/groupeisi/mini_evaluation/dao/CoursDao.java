package com.groupeisi.mini_evaluation.dao;

import com.groupeisi.mini_evaluation.entities.CoursEntity;

import java.util.Optional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.CriteriaUpdate;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;


public class CoursDao extends RepositoryImpl<CoursEntity> implements ICoursDao {

    @Override
    public Optional<CoursEntity> findById(Long id) {
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<CoursEntity> cr = cb.createQuery(CoursEntity.class);
        Root<CoursEntity> cours = cr.from(CoursEntity.class);

        Predicate predicateId = cb.equal(cours.get("id"), id);

        cr.select(cours).where(predicateId);

        try {
            return Optional.ofNullable(session.createQuery(cr).getSingleResult());
        } catch (Exception e) {
            return Optional.empty();
        }
    }

    @Override
    public boolean update(CoursEntity coursEntity) {
        session.getTransaction().begin();

        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaUpdate<CoursEntity> update = cb.createCriteriaUpdate(CoursEntity.class);
        Root<CoursEntity> cours = update.from(CoursEntity.class);

        update.set("matiere", coursEntity.getMatiere());
        update.set("professeur", coursEntity.getProfesseur());
        update.set("classe", coursEntity.getClasse());

        Predicate predicateId = cb.equal(cours.get("id"), coursEntity.getId());
        update.where(predicateId);

        int rowsAffected = session.createQuery(update).executeUpdate();

        session.getTransaction().commit();

        return rowsAffected > 0;
    }
}

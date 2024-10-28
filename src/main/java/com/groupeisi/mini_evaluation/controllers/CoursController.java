package com.groupeisi.mini_evaluation.controllers;

import com.groupeisi.mini_evaluation.dto.CoursDto;
import com.groupeisi.mini_evaluation.services.ICoursService;
import com.groupeisi.mini_evaluation.services.CoursService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class CoursController {
    private static final Logger logger = LoggerFactory.getLogger(CoursController.class);

    private ICoursService coursService;

    public CoursController(){
        this.coursService = new CoursService();
    }

    @GetMapping("/course")
    public String showCours(Model model) {
        logger.info("coursController - Méthode GET appelée pour afficher les cours");

        try {
            Optional<List<CoursDto>> course = coursService.findAll();
            if (course.isPresent()) {
                logger.info("CoursController - Liste des cours récupérée avec succès");
                model.addAttribute("coursList", course.get());
            } else {
                logger.info("CoursController - Aucun cours trouvé");
                model.addAttribute("coursList", new ArrayList<CoursDto>());
            }
        } catch (Exception e) {
            logger.error("CoursController - Erreur lors de la récupération des cours", e);
        }

        return "/pages/cours";
    }

    @PostMapping("/course")
    public String saveCours(
           // @RequestParam("id") Long id,
            @RequestParam("matiere") String matiere,
            @RequestParam("professeur") String professeur,
            @RequestParam("classe") String classe) {

        logger.info("CoursController - Méthode POST appelée pour enregistrer un cours");
        logger.debug("CoursController - Paramètres reçus : id={}, matiere={}, professeur={}, classe={}",matiere, professeur, classe);

        CoursDto coursDto = new CoursDto();

        coursDto.setMatiere(matiere);
        coursDto.setProfesseur(professeur);
        coursDto.setClasse(classe);

        try {
            boolean coursSaved = coursService.save(coursDto);

            if (coursSaved) {
                logger.info("CoursController - Cours enregistré avec succès");
            } else {
                logger.warn("CoursController - Échec de l'enregistrement du cours");
            }
        } catch (Exception e) {
            logger.error("CoursController - Erreur lors de l'enregistrement du cours", e);
        }

        return "redirect:/course";
    }


}

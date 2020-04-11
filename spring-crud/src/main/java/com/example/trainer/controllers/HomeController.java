/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.trainer.controllers;

import com.example.trainer.model.Trainer;
import com.example.trainer.services.TrainerInterface;
import java.util.List;
import java.util.Optional;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author vatso
 */
@Controller
@RequestMapping(value = "/trainer")
public class HomeController {
    
   
    @Autowired
    private TrainerInterface trainerInterface ;
    

    @RequestMapping("/list")
    public String listTrainers(ModelMap theModel) {

      //get trainers from the interface
        List<Trainer> theTrainers = trainerInterface.getAllTrainers();
        
        //add the trainers to the model
        theModel.addAttribute("alltrainers", theTrainers);
        
        
        
        
        return "list-trainers";
    }

    
   @GetMapping("/showFormForAdd") 
   public String showFormForAdd(Model theModel){
       
      // create model attribute to bind form data 
      Trainer theTrainer = new Trainer(); 
      
      theModel.addAttribute("trainer", theTrainer);
      
       return"trainer-form";
   }
    
    @PostMapping("/saveTrainer")
    public String saveTrainer(@ModelAttribute("trainer") Trainer theTrainer){
   
       trainerInterface.saveTrainer(theTrainer);
        
      return "redirect:/trainer/list";  
        
        
   }
    
    
    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("trainerId")int theId,
            Model theModel){
       
        // get the trainer from the database
        Optional<Trainer> theTrainer =  trainerInterface.getTrainer(theId);
        
        
        //set trainer as a model attribute to pre-populate the form
        theModel.addAttribute("trainer",theTrainer);
        
        
        //send over to our form
        return"trainer-form";
        
         
        
    }
    
    
    @GetMapping("/delete") 
        public String deleteTrainer(@RequestParam("trainerId") int theId){
                
            trainerInterface.deleteTrainer(theId);
            
            
                return "redirect:/trainer/list";
            }
        
        
    
        
        
        
        
         @RequestMapping("/processForm")
        public String processForm(@Valid @ModelAttribute("trainer") Trainer theTrainer,
                BindingResult theBindingResult){
            
            if(theBindingResult.hasErrors()){
                return "trainer-form"; 
            }
            else {
                trainerInterface.saveTrainer(theTrainer);
                return "redirect:/trainer/list";
            }
            
        }
        
        
        @RequestMapping("/showForm")
    public String showForm(Model theModel){
       theModel.addAttribute("trainer", new Trainer());
       
       return "trainer-form";
    }
        
        
        
        
        
        
        
        
}

 

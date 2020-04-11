/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.trainer.services;

import com.example.trainer.model.Trainer;
import com.example.trainer.repositories.TrainerRepository;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

/**
 *
 * @author vatso
 */
@Service
@Transactional
public class TrainerInterfaceImplementation implements TrainerInterface {

    @Autowired
    TrainerRepository tr; 
    
    
    
    @Override
    public List<Trainer> getAllTrainers() {
        
       Iterable<Trainer> trainers =  tr.findAll(Sort.by("subject").ascending());
       return (List<Trainer>) trainers;
    }

    
    
    @Override
    
    public  void saveTrainer(Trainer theTrainer) {
       
        tr.save(theTrainer);
    }

    @Override
    public Optional <Trainer> getTrainer(int theId) {
    return tr.findById(theId);
    }

    @Override
    public void deleteTrainer(int theId) {
       tr.deleteById(theId);
    }
 
     
    
}

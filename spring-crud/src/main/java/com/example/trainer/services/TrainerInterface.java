/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.trainer.services;

import com.example.trainer.model.Trainer;
import java.util.List;
import java.util.Optional;

/**
 *
 * @author vatso
 */
public interface TrainerInterface {

    public List<Trainer> getAllTrainers();

    public void saveTrainer(Trainer theTrainer);

    public Optional<Trainer> getTrainer(int theId);

    public void deleteTrainer(int theId);
}

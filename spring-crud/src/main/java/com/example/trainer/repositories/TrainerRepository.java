/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.trainer.repositories;

import com.example.trainer.model.Trainer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author vatso
 */
@Repository
public interface TrainerRepository extends CrudRepository<Trainer,Integer>,PagingAndSortingRepository<Trainer, Integer> {
    
}

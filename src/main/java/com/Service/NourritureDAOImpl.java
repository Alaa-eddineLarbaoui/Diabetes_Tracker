package com.Service;

import com.Repository.GlucoseReadingRepository;
import com.Repository.NourritureRepositry;
import com.beans.GlucoseReading;
import com.beans.Nourriture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

@Service
public class NourritureDAOImpl implements NourritureDAO {

    @Autowired
    private NourritureRepositry Nourr;

    @Transactional
    @Override
    public ArrayList<Nourriture> ShowNourriture() {
        return (ArrayList<Nourriture>) Nourr.findAll();
    }
}
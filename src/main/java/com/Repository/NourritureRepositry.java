package com.Repository;

import com.beans.GlucoseReading;
import com.beans.Nourriture;
import org.springframework.data.jpa.repository.JpaRepository;


public interface NourritureRepositry  extends JpaRepository<Nourriture, Integer> {
}
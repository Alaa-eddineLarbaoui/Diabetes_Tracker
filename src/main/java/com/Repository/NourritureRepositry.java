package com.Repository;

import com.beans.GlucoseReading;
import com.beans.Nourriture;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface NourritureRepositry extends JpaRepository<Nourriture, Integer> {
    List<Nourriture> findByGenre(String genre);
}

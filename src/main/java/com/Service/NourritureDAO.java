package com.Service;

import com.beans.GlucoseReading;
import com.beans.Nourriture;

import java.util.List;

public interface NourritureDAO {
    List<Nourriture> ShowNourriture(String genre);
}

package com.Service;

import com.beans.GlucoseReading;

import java.util.ArrayList;

public interface GlucoseDAO {

    void Add(GlucoseReading gr);
    ArrayList<GlucoseReading> ShowDiabetes();
    void delete(Integer id);
}

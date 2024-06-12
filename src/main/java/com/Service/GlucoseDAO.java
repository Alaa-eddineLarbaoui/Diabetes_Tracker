package com.Service;

import com.beans.GlucoseReading;

import java.util.ArrayList;
import java.util.List;

public interface GlucoseDAO {

    void Add(GlucoseReading gr);
    ArrayList<GlucoseReading> ShowDiabetes();
    void delete(Integer id);

}

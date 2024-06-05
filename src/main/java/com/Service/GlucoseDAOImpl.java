package com.Service;

import com.Repository.GlucoseReadingRepository;
import com.beans.GlucoseReading;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class GlucoseDAOImpl implements GlucoseDAO{

    @Autowired
    private GlucoseReadingRepository rd;
    @Override
    @Transactional
    public void Add(GlucoseReading gr) {
        rd.save(gr);

    }
}

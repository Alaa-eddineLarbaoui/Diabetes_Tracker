package com.Repository;

import com.beans.GlucoseReading;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


public interface GlucoseReadingRepository  extends JpaRepository<GlucoseReading, Integer> {

}



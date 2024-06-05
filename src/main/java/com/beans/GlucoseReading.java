package com.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "GlucoseReading")
public class GlucoseReading {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "date_of_Tracking")
    private java.sql.Date date_of_Tracking;

    @Column(name = "time_of_tracking")
    private java.sql.Time time_of_tracking;

    @Column(name = "value_Glucose")
    private double value_Glucose;

    public GlucoseReading() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public java.sql.Date getDate_of_Tracking() {
        return date_of_Tracking;
    }

    public void setDate_of_Tracking(java.sql.Date date_of_Tracking) {
        this.date_of_Tracking = date_of_Tracking;
    }

    public java.sql.Time getTime_of_tracking() {
        return time_of_tracking;
    }

    public void setTime_of_tracking(java.sql.Time time_of_tracking) {
        this.time_of_tracking = time_of_tracking;
    }

    public double getValue_Glucose() {
        return value_Glucose;
    }

    public void setValue_Glucose(double value_Glucose) {
        this.value_Glucose = value_Glucose;
    }

    @Override
    public String toString() {
        return "GlucoseReading{" +
                "id=" + id +
                ", date_of_Tracking=" + date_of_Tracking +
                ", time_of_tracking=" + time_of_tracking +
                ", value_Glucose=" + value_Glucose +
                '}';
    }
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hantam.bugreport;

import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.Connection;

/**
 *
 * @author Crestfall
 */
public class Bug {

    Statement stmt;
    PreparedStatement pstmt;
    Connection conn = connect.connection();

    public int getBugId() {
        return bugId;
    }

    public void setBugId(int bugId) {
        this.bugId = bugId;
    }
    
    public String getTester() {
        return tester;
    }

    public void setTester(String tester) {
        this.tester = tester;
    }

    public String getDateOpen() {
        return dateOpen;
    }

    public void setDateOpen(String dateOpen) {
        this.dateOpen = dateOpen;
    }

    public String getRootCause() {
        return rootCause;
    }

    public void setRootCause(String rootCause) {
        this.rootCause = rootCause;
    }

    public int getSeverity() {
        return severity;
    }

    public void setSeverity(int severity) {
        this.severity = severity;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getSteps() {
        return steps;
    }

    public void setSteps(String steps) {
        this.steps = steps;
    }

    public String getIsolation() {
        return isolation;
    }

    public void setIsolation(String isolation) {
        this.isolation = isolation;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getEstimateFix() {
        return estimateFix;
    }

    public void setEstimateFix(String estimateFix) {
        this.estimateFix = estimateFix;
    }

    public String getPhaseDetected() {
        return phaseDetected;
    }

    public void setPhaseDetected(String phaseDetected) {
        this.phaseDetected = phaseDetected;
    }

    public String getPhaseRemoved() {
        return phaseRemoved;
    }

    public void setPhaseRemoved(String phaseRemoved) {
        this.phaseRemoved = phaseRemoved;
    }

    public String getDateClose() {
        return dateClose;
    }

    public void setDateClose(String dateClose) {
        this.dateClose = dateClose;
    }

    public String getResolution() {
        return resolution;
    }

    public void setResolution(String resolution) {
        this.resolution = resolution;
    }
    
    private int bugId;
    private String tester;
    private String dateOpen;
    private String rootCause;
    private int severity;
    private int priority;
    private String summary;
    private String steps;
    private String isolation;
    private String state;
    private String owner;
    private String estimateFix;
    private String phaseDetected;
    private String phaseRemoved;
    private String dateClose;
    private String resolution;

    public void createBugReport() {
        String sql = "";
    }
    
}

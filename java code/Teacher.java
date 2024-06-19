package com.example;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "teachers")
public class Teacher extends User {
    @Column(name="subject", nullable=false)
    private String subject;
    @OneToMany( cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Student> studentsSupervised = new ArrayList<>();
    @ManyToMany(mappedBy = "teachers")
    private List<Class> classes;

    public Teacher() {
    }

    public Teacher( String name, String password, String subject) {
        super( name, password);
        this.subject = subject;
    }

    public String getSubject() {
        return subject;
    }
    public void setSubject(String subject) {
        this.subject = subject;
    }
    public List<Student> getStudentsSupervised() {
        return studentsSupervised;
    }
    public void setStudentsSupervised(List<Student> studentsSupervised) {
        this.studentsSupervised = studentsSupervised;
    }
    public List<Class> getClasses() {
        return classes;
    }
    public void setClasses(List<Class> classes) {
        this.classes = classes;
    }
}

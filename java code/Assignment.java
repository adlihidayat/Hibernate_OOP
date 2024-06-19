package com.example;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "assignments")
public class Assignment extends Activity {

    private LocalDateTime dueDate;
    @ManyToMany
    @JoinTable(name = "assignment_student",
            joinColumns = @JoinColumn(name = "assignment_id"),
            inverseJoinColumns = @JoinColumn(name = "student_id"))
    private List<Student> assignees = new ArrayList<>();

    public Assignment(String name, String description, LocalDateTime dueDate) {
        super(name, description);
        this.dueDate = dueDate;
    }
    public List<Student> getAsignee() {
        return assignees;
    }
    public void setScores(List<Student> asignee) {
        this.assignees = asignee;
    }
    public LocalDateTime getDueDate() {
        return dueDate;
    };

}

package com.example;


import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "meetings")
public class Meeting extends Activity {

    private String meetingRoom;
    private LocalDateTime meetingStartTime;

    @ManyToMany
    @JoinTable(name = "meeting_student",
            joinColumns = @JoinColumn(name = "assignment_id"),
            inverseJoinColumns = @JoinColumn(name = "student_id"))
    private List<Student> attandees = new ArrayList<>();

    public Meeting(String name, String description, String meetingRoom, LocalDateTime meetingStartTime) {
        super(name, description);
        this.meetingRoom = meetingRoom;
        this.meetingStartTime = meetingStartTime;
    }

    public String getMeetingRoom() {
        return meetingRoom;
    };
    public LocalDateTime getMeetingStartTime() {
        return meetingStartTime;
    };
    public List<Student> getAttandee() {
        return attandees;
    }
    public void setScores(List<Student> attandees) {
        this.attandees = attandees;
    }
}

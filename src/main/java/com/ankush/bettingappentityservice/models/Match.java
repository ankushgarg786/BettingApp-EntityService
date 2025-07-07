package com.ankush.bettingappentityservice.models;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "matches")
public class Match extends BaseEntity{

    @Column(nullable = false)
    private String homeTeam;

    @Column(nullable = false)
    private String awayTeam;

    @Column(nullable = false)
    private LocalDateTime startTime;

    private String scoreSummary;

    @Enumerated(value=EnumType.STRING)
    private MatchStatus status;

    @OneToMany(mappedBy = "match",cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<Odds> oddsList;
}

package com.ankush.bettingappentityservice.models;

import jakarta.persistence.Entity;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class MatchResult extends BaseEntity{

    private String winningTeam; // "HOME", "AWAY", or "DRAW"

    private Integer homeScore;

    private Integer awayScore;

    private LocalDateTime resultDeclaredAt;
}

package com.ankush.bettingappentityservice.models;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.ManyToOne;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Bet extends BaseEntity {

    @ManyToOne
    @JsonBackReference
    private User user;

    private Long matchId;

    private String selectedTeam; // "HOME", "AWAY", or possibly "DRAW"

    private Double amount;

    private Double oddsAtBetTime;

    @Enumerated(EnumType.STRING)
    private BetStatus status; // PENDING, WON, LOST, CANCELLED

    private Double potentialWinning;

}

package com.ankush.bettingappentityservice.models;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Transaction extends BaseEntity{

    @ManyToOne
    @JsonBackReference
    private User user;

    private TransactionType type; // BET_PLACED, WIN_CREDITED, REFUND, MANUAL_ADJUSTMENT
    private Double amount;
    private String reference; // maybe a betId or matchId
    private String description;

}

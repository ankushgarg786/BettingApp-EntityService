package com.ankush.bettingappentityservice.models;

import jakarta.persistence.Entity;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderBookEntry extends BaseEntity {

    private Long betId;
    private Long matchId;
    private String team; // "IND" or "AUS"
    private double odds;
    private double amount;
    private OrderStatus status; // OPEN, MATCHED, CANCELLED


}

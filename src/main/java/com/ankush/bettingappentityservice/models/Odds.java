package com.ankush.bettingappentityservice.models;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.*;


@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Odds extends BaseEntity{

    @ManyToOne
    @JoinColumn(name = "match_id",referencedColumnName = "id")
    @JsonBackReference
    private Match match;

    @Enumerated(value = EnumType.STRING)
    private MarketType marketType;  //winner, total_runs, first_wicket (a user can bet on)

    private String selection;  //e.g., "Chennai Super Kings", "Over 150 runs"

    private Double oddsValue; // 1.5x , 1.7x

    private Boolean isActive; //Whether the odds are currently valid/live


}

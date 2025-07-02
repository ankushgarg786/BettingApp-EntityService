package com.ankush.bettingappentityservice.models;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Wallet extends BaseEntity{

    private Double balance;

    private Boolean locked=false;

    @OneToOne
    @JoinColumn(name = "userId",referencedColumnName = "id")
    private User user;
}

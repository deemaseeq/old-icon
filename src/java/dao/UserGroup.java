/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.Serializable;
import javax.persistence.*;

/**
 *
 * @author dmitriy
 */

//@Entity
//@Table(name = "usergroup")
public class UserGroup implements Serializable {
    
//    @Id
//    @Column(name = "group_id", nullable = false)
    private Integer groupID;
    
//    @Column(name = "group_name", nullable = false)
    private String groupName;

    public UserGroup() {
    }

    public Integer getGroupID() {
        return groupID;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupID(Integer groupID) {
        this.groupID = groupID;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }
    
}

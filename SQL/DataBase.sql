#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
CREATE DATABASE InventoryDatabase; 
USE InventoryDatabase;

#------------------------------------------------------------
# Table: T_Place
#------------------------------------------------------------

CREATE TABLE T_Place(
        idPlace Int  Auto_increment  NOT NULL ,
        plaName Varchar (300) NOT NULL
	,CONSTRAINT T_Place_PK PRIMARY KEY (idPlace)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: T_EquipmentList
#------------------------------------------------------------

CREATE TABLE T_EquipmentList(
        idEquipmentList Int  Auto_increment  NOT NULL ,
        EquListName     Varchar (20) NOT NULL
	,CONSTRAINT T_EquipmentList_PK PRIMARY KEY (idEquipmentList)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: T_Equipment
#------------------------------------------------------------

CREATE TABLE T_Equipment(
        idEquipment     Int  Auto_increment  NOT NULL ,
        equBrand        Varchar (20) NOT NULL ,
        equSerialNumber Varchar (20) NOT NULL ,
        equDescription  Varchar (300) NOT NULL ,
        equReceived     Date NOT NULL ,
        equSent         Date NOT NULL ,
        idEquipmentList Int NOT NULL ,
        idPlace         Int NOT NULL
	,CONSTRAINT T_Equipment_PK PRIMARY KEY (idEquipment)

	,CONSTRAINT T_Equipment_T_EquipmentList_FK FOREIGN KEY (idEquipmentList) REFERENCES T_EquipmentList(idEquipmentList)
	,CONSTRAINT T_Equipment_T_Place0_FK FOREIGN KEY (idPlace) REFERENCES T_Place(idPlace)
)ENGINE=InnoDB;


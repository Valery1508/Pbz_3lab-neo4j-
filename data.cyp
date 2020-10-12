CREATE (univer: class{name: "BSUIR"}),
(fitu: faculty{name: "FITU"}), 
(fksis: faculty{name: "FKSIS"}), 
(fre: faculty{name: "FRE"}), 
(fkp: faculty{name: "FKP"}), 
(fik: faculty{name: "FIK"}),
(one_thousand_eight_hundreed: number {value: 1800}),
(two_thousand: number {value: 2000}),
(one_thousand_five_hundreed: number {value: 1500}),
(one_thousand_four_hundreed: number {value: 1400}),
(one_thousand: number {value: 1000}),
(one_thousand_eight_hundreed)<-[:number_of_students {name: "количество студентов"}]-(fitu)-[:is_faculty {name: "является факультетом"}]->(univer),
(two_thousand)<-[:number_of_students {name: "количество студентов"}]-(fksis)-[:is_faculty {name: "является факультетом"}]->(univer),
(one_thousand_five_hundreed)<-[:number_of_students {name: "количество студентов"}]-(fre)-[:is_faculty {name: "является факультетом"}]->(univer),
(one_thousand_four_hundreed)<-[:number_of_students {name: "количество студентов"}]-(fkp)-[:is_faculty {name: "является факультетом"}]->(univer),
(one_thousand)<-[:number_of_students {name: "количество студентов"}]-(fik)-[:is_faculty {name: "является факультетом"}]->(univer),
(cultorgFitu: cultorg{name: "Julia"}),
(cultorgFksis: cultorg{name: "Nastya"}),
(cultorgFre: cultorg{name: "Sonya"}),
(cultorgFkp: cultorg{name: "Margo"}),
(cultorgFik: cultorg{name: "Egor"}),
(cultorgFitu)<-[:is_cultorg {name: "является культоргом"}]-(fitu),
(cultorgFksis)<-[:is_cultorg {name: "является культоргом"}]-(fksis),
(cultorgFre)<-[:is_cultorg {name: "является культоргом"}]-(fre),
(cultorgFkp)<-[:is_cultorg {name: "является культоргом"}]-(fkp),
(cultorgFik)<-[:is_cultorg {name: "является культоргом"}]-(fik),
(cultorgFitu)<-[:is_friend {name: "дружит"}]-(cultorgFkp),
(cultorgFitu)<-[:is_friend {name: "дружит"}]-(cultorgFre),
(cultorgFik)<-[:is_friend {name: "дружит"}]-(cultorgFre),
(cultorgFksis)<-[:is_friend {name: "дружит"}]-(cultorgFkp)
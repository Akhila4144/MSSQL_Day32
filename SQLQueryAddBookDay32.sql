--UC1 Ability t create AddressBookService Database
create database AddressBookService			

--UC2 Abilty to create AddressBook Table
create table AddressBook(
FirstName varchar(255),
LastName varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
Zip int,
PhoneNumber varchar(255),
Email varchar(255)
)

select * from AddressBook;

--UC3 Ability To Insert New Conatacts Into AddressBook
Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Akhila','Oruganti','Vidyanagar','Karimnagar','Telangana',505001,'+919550458288','orugantiakhila34@gmail.com')

Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Vamshi','Chatla','Peechupally','Karimnagar','Telangana',505467,'+9180996828819','vamsi214@gmail.com')

Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Abhi','Oruganti','Kanpur','Bangolore','karnataka',513424,'+918374726752','abhij98@gmail.com')

Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Prasanna','Alavoju','vilalpally','Vishakapanam','Andra Pradesh',563524,'+9197456345425','puppy1234@gmail.com')

--UC4 Ability rto edit the existing contact with their NAme
Update AddressBook
set FirstName = 'Kjal',LastName='agrwal',Address='Hanmajpally',City='Warangal',State = 'Telangana',Zip=874362,PhoneNumber='+9176354252324',Email='kajol988@gmail.com'
where FirstName='Akhila'
--UC5 Delete person using first name
delete from AddressBook where FirstName='Prasanna'
--UC6 Ability to retrieve person belonging to a city or state 
select * from AddressBook where City ='Bangolore'

--UC7 Count size of addressbook by city and state
select count(City) as TotalContact from AddressBook;
 
 --UC8 Ability to retrieve entries sorted  alphabetically by person's  name
select * from AddressBook where State='Telangana' order by (FirstName);
select * from AddressBook


--UC9 Altering Address Book to add new columns, Address Book Name and Type of contacts
alter table AddressBook add addressBookType varchar(30), AddressBookName varchar(40);

update AddressBook set addressBookType = 'Friends' where City ='Warangal';

update AddressBook set AddressBookName = 'BookRecords';

update AddressBook set addressBookType = 'Family' where LastName ='Chatla';

update AddressBook set addressBookType = 'Profession' where addressBookType is null;

--UC10 Getting number of contact persons for each ContactType
select addressBookType, count(addressBookType) as NumberOfContacts from AddressBook group by addressBookType;


--UC11 Ability to add person to both Friend and Family
insert into AddressBook values('Chinny', 'Kannel','ADML','Ahmedabad', 'Gujarat', 7635546,98746736475, 'avuhy12@gmail.com','Family','BookRecords')
select * from AddressBook where FirstName='Chinny' and LastName='Kannel'; 



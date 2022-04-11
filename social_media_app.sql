create table users (
	id int(11) not null auto_increment,
	username varchar(25) not null,
	email varchar(25) not null,
	user_password varchar(25) not null,
	first_name varchar(20),
	last_name varchar(20),
	primary key(id)
);

create table posts (
	id int(11) not null auto_increment,
	content varchar(255) not null,
	user_id int(11) not null,
	time_of_post datetime default current_timestamp,
	primary key (id),
	foreign key (user_id) references users(id)
);

create table comments (
	id int(11) not null auto_increment,
	comment varchar(255) not null,
	user_id int(11) not null,
	post_id int(11) not null,
	time_of_comment datetime default current_timestamp,
	primary key (id),
	foreign key (user_id) references users(id),
	foreign key (post_id) references posts(id)
);

desc users;
desc posts;
desc comments;
create table user_meat(
	id bigint  not null default id_generator(),
	user_name text,
	first_name text,
	last_name text,
	email text,
	password text,
	password_salt text,
	admin_comment text,
	--affiliateid int not null,
	--vendorid int not null,
	active boolean,
	verified boolean,
	deleted boolean,
	is_system_account boolean,
	last_ip text,
	created timestamp without time zone  not null default (now() at time zone 'utc'),
	last_login_date timestamp without time zone  not null default (now() at time zone 'utc'),
	last_activity_date timestamp without time zone  not null default (now() at time zone 'utc'),
	cell_phone text,
	office_phone text,
	fax text,
	country text,
	city text,
	post_code text,
	CONSTRAINT user_meta_pkey PRIMARY KEY (id)
);
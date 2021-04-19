CREATE TABLE actor (
act_id            int                         NOT NULL,
act_fname         char(20)                    NOT NULL,
act_lname         char(20)                    NOT NULL,
act_gender        char(1)                     NOT NULL,

          constraint  actor_PK   primary key(act_id)
	);
    
    CREATE TABLE director (
dir_id             int(10)                     NOT NULL,
dir_fname          char(20)                    NOT NULL,
dir_lname          char(20)                    NOT NULL,

          constraint  director_PK   primary key(dir_id)
	);
    
    CREATE TABLE movie_direction (
dir_id            int(10)                 NOT NULL,
Mov_id            int(10)                 NOT NULL,

          constraint  movie_direction_PK   primary key(mov_id, dir_id)
	);
    
    CREATE TABLE movie_cast (
    act_id        int(10)                NOT NULL,
    mov_id        int(10)                NOT NULL,
    role          char(30)               NOT NULL,
		constraint movie_cast_PK    primary key(act_id, mov_id)
        );
        
        CREATE TABLE movie (
    mov_id          int(10)                NOT NULL,
    mov_title       char(50)               NOT NULL,
    mov_year        int(20)                NOT NULL,
    mov_lang        char(50)               NOT NULL,
    mov_dt_rel      date                   NOT NULL,
    mov_rel_country char(5)                NOT NULL,
		constraint movie_PK    primary key(mov_id)
        );
        
        CREATE TABLE reviewer (
    rev_id         int                     NOT NULL,
    rev_name       char(30)                NOT NULL,
		constraint reviewer_PK    primary key(rev_id)
        );
        
        CREATE TABLE genre (
    gen_id         int(10)                 NOT NULL,
    gen_title      char(20)                NOT NULL,
		constraint genre    primary key(gen_id)
        );
        
        CREATE TABLE movie_genre (
    gen_id        int(10)                NOT NULL,
    mov_id        int(10)                NOT NULL,
		constraint movie_genre_PK    primary key(gen_id)
        );
        
        CREATE TABLE rating(
    rev_id        int(10)                NOT NULL,
    mov_id        int(10)                NOT NULL,
    rev_stars      int(30)               NOT NULL,
    num_0_rating    int(20)              NOT NULL,
		constraint ratring_PK    primary key(mov_id, rev_id)
        );
USE codeup_test_db;

CREATE TABLE quotes (
    id INT NOT NULL AUTO_INCREMENT,
    author VARCHAR(70),
    content VARCHAR(250) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO quotes (content, author)
    VALUES
        ('To be, or not to be: that is the question.', 'William Shakespeare'),
        ('All the world\'s a stage, and all the men and women merely players.', 'William Shakespeare'),
        ('It\'s a crazy world, full of sinners and saints. Criminals and cops. Friends and foes.', 'Dr. Dre'),
        ('My crown is in my heart, not on my head; not decked with diamonds and Indian stones, nor to be seen: my crown is called content.', 'William Shakespeare'),
        ('I never sleep, cause sleep is the cousin of death.', 'Nas'),
        ('The valiant never taste of death but once.', 'William Shakespeare'),
        ('We can\'t change the world until we change ourselves.', 'Biggie Smalls'),
        ('Love looks not with the eyes, but with the mind, and therefore is winged Cupid painted blind.', 'William Shakespeare'),
        ('If you don\'t stand for something, you will fall for anything.', 'Malcolm X'),
        ('What\'s done is done.', 'William Shakespeare'),
        ('Lately I\'ve been hard to reach. I\'ve been too long on my own.', 'Dr. Dre');

CREATE TABLE authors (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(70) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO authors (name)
    VALUES
        ('William Shakespeare'),
        ('Dr. Dre'),
        ('Nas'),
        ('Biggie Smalls'),
        ('Malcolm X');

# CANT BE DONE .˙. add without constraint || columns
# ALTER TABLE quotes
#     ADD COLUMN author_id INT NOT NULL,
#     ADD CONSTRAINT quotes_author_id_fk
#         FOREIGN KEY (author_id)
#             REFERENCES authors (id);

ALTER TABLE quotes ADD COLUMN author_id INT NOT NULL;

UPDATE quotes
SET author_id = (
    SELECT id
    FROM authors
    WHERE authors.name = quotes.author
    );

ALTER TABLE quotes
    ADD CONSTRAINT fk_author
        FOREIGN KEY (author_id)
            REFERENCES authors (id);

#   QUOTES                                 |  ADDED AUTHORS
#   + ------ + ----------- + ---------- +  |  + ------ + -------- +
#   |   ID   |   CONTENT   |   AUTHOR   |  |  |   ID   |   NAME   |
#                                          |     //
#                                          |     \\
#      QUOTES, IMPROVED TO:                      //
#      + ------ + ----------- + ---------- + ------------- +
#      |   ID   |   CONTENT   |   AUTHOR   |   AUTHOR ID   |
#
#   DATABASE SCHEMA: written out in UML notation
#   MANY authors cannot belong to ONE quote
#   .˙.
#   ONE to MANY: One author can have MANY quotes

CREATE TABLE topics (
    id INT NOT NULL AUTO_INCREMENT,
    topic VARCHAR(70) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO topics (topic)
VALUES
    ('Life and death'),
    ('The world as a stage'),
    ('Good and evil'),
    ('Contentment and materialism'),
    ('Sleep and death'),
    ('Courage and bravery'),
    ('Personal responsibility'),
    ('Love and perception'),
    ('Standing up for oneself'),
    ('Moving on and accepting the past'),
    ('Solitude and isolation');

CREATE TABLE quote_topics ()
VALUES
    ;
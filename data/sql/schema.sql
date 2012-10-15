CREATE TABLE jobeet_affiliate (id BIGINT AUTO_INCREMENT, url VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL UNIQUE, token VARCHAR(255) NOT NULL UNIQUE, is_active TINYINT(1) DEFAULT '0' NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE jobeet_category (id BIGINT AUTO_INCREMENT, name VARCHAR(255) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, slug VARCHAR(255), UNIQUE INDEX jobeet_category_sluggable_idx (slug), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE jobeet_category_affiliate (category_id BIGINT, affiliate_id BIGINT, PRIMARY KEY(category_id, affiliate_id)) ENGINE = INNODB;
CREATE TABLE jobeet_job (id BIGINT AUTO_INCREMENT, category_id BIGINT NOT NULL, type VARCHAR(255), company VARCHAR(255) NOT NULL, logo VARCHAR(255), url VARCHAR(255), position VARCHAR(255) NOT NULL, location VARCHAR(255) NOT NULL, description TEXT NOT NULL, how_to_apply TEXT NOT NULL, token VARCHAR(255) NOT NULL UNIQUE, is_public TINYINT(1) DEFAULT '1' NOT NULL, is_activated TINYINT(1) DEFAULT '0' NOT NULL, email VARCHAR(255) NOT NULL, expires_at DATETIME NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX category_id_idx (category_id), PRIMARY KEY(id)) ENGINE = INNODB;
ALTER TABLE jobeet_category_affiliate ADD CONSTRAINT jobeet_category_affiliate_category_id_jobeet_category_id FOREIGN KEY (category_id) REFERENCES jobeet_category(id) ON DELETE CASCADE;
ALTER TABLE jobeet_category_affiliate ADD CONSTRAINT jobeet_category_affiliate_affiliate_id_jobeet_affiliate_id FOREIGN KEY (affiliate_id) REFERENCES jobeet_affiliate(id) ON DELETE CASCADE;
ALTER TABLE jobeet_job ADD CONSTRAINT jobeet_job_category_id_jobeet_category_id FOREIGN KEY (category_id) REFERENCES jobeet_category(id) ON DELETE CASCADE;

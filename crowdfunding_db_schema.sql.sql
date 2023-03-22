﻿CREATE TABLE "campaign" (
    "cf_id" integer   NOT NULL,
    "contact_id" integer   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" integer   NOT NULL,
    "pledged" integer   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" date   NOT NULL,
    "deadline" date   NOT NULL,
    "category_id" integer   NOT NULL,
    "subcategory_id" integer   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" integer   NOT NULL,
    "category" varchar   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" integer   NOT NULL,
    "subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" integer   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");


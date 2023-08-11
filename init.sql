SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
set schema 'public';
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--






--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

CREATE TABLE ConfigurationSet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    Fqdn text  NOT NULL,
    Subdomainname text  NOT NULL,
    Outboundipv4 text  NOT NULL,
    Outboundipv6 text  NOT NULL,
    Sshusername text  NOT NULL,
    Sshprivatekey text  NOT NULL,
    Hostname text  NOT NULL,
    Mailcowapikey text  NOT NULL,
    InstanceId text  NOT NULL,
    JWTSecret text  NOT NULL,
    JWTIssuer text  NOT NULL,
    JWTAudience text  NOT NULL,
    Miniosecret text NULL,
    Minioaccesskey text NULL,
    Minioendpoint text NULL
);


-- SQLINES DEMO *** serSetSet'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE UserSetSet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    UserId text  NOT NULL,
    UserName text  NOT NULL
);

-- SQLINES DEMO *** omainSet'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE DomainSet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    DomainName text  NOT NULL,
    Active boolean  NOT NULL,
    DomainId text  NOT NULL
);

-- SQLINES DEMO *** ailboxSet'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE MailboxSet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    Username text  NOT NULL,
    Password text  NOT NULL,
    DisplayName text  NOT NULL,
    MailboxId text  NOT NULL,
    Domain_Id int  NOT NULL
);

-- SQLINES DEMO *** ontactSet'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE ContactSet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    Email text  NOT NULL,
    ContactId text  NOT NULL,
    CreatedOn timestamp(3)  NOT NULL
);

-- SQLINES DEMO *** ropertySet'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE PropertySet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    PropertyId text  NOT NULL,
    Name text  NOT NULL,
    Value text  NOT NULL,
    Contact_Id int  NOT NULL
);

-- SQLINES DEMO *** ailingListSet'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE MailingListSet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    MailingListId text  NOT NULL,
    Name text  NOT NULL
);

-- SQLINES DEMO *** ailingListSubscriptionSet'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE MailingListSubscriptionSet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    SubscriptionId text  NOT NULL,
    Subscribed boolean  NOT NULL,
    ConsentGrantedOn timestamp(3)  NULL,
    ConsentRemovedOn timestamp(3)  NULL,
    Contact_Id int  NOT NULL,
    MailingList_Id int  NOT NULL
);

-- SQLINES DEMO *** ailTemplateSet'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE MailTemplateSet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    TemplateId text  NOT NULL,
    Name text  NOT NULL,
    Description text  NULL,
    CreatedOn timestamp(3)  NOT NULL,
    Content text  NULL
);

-- SQLINES DEMO *** ailingSet'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE MailingSet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    TemplateId text  NULL,
    MailingId text  NOT NULL,
    MailingListId text  NULL,
    CreatedOn timestamp(3)  NOT NULL,
    Subject text  NOT NULL,
    MailingType int  NOT NULL,
    Mailbox_Id int  NOT NULL
);

-- SQLINES DEMO *** ailingMailSet'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE MailingMailSet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    MailId text  NOT NULL,
    ContactId text  NULL,
    Status int  NOT NULL,
    ContentUrl text  NOT NULL,
    ToSendOn timestamp(3)  NOT NULL,
    RecipientEmail text  NULL,
    RecipientDisplayName text  NULL,
    Mailing_Id int  NOT NULL
);

-- SQLINES DEMO *** ailingPropertySet'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE MailingPropertySet (
    Id int GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) NOT NULL,
    Name text  NOT NULL,
    Value text  NOT NULL,
    PropertyId text  NOT NULL,
    Mailing_Id int  NOT NULL
);

-- SQLINES DEMO *** ---------------------------------
-- SQLINES DEMO *** ARY KEY constraints
-- SQLINES DEMO *** ---------------------------------

-- SQLINES DEMO *** key on [Id] in table 'ConfigurationSet'
ALTER TABLE ConfigurationSet
ADD CONSTRAINT PK_ConfigurationSet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** key on [Id] in table 'UserSetSet'
ALTER TABLE UserSetSet
ADD CONSTRAINT PK_UserSetSet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** key on [Id] in table 'DomainSet'
ALTER TABLE DomainSet
ADD CONSTRAINT PK_DomainSet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** key on [Id] in table 'MailboxSet'
ALTER TABLE MailboxSet
ADD CONSTRAINT PK_MailboxSet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** key on [Id] in table 'ContactSet'
ALTER TABLE ContactSet
ADD CONSTRAINT PK_ContactSet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** key on [Id] in table 'PropertySet'
ALTER TABLE PropertySet
ADD CONSTRAINT PK_PropertySet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** key on [Id] in table 'MailingListSet'
ALTER TABLE MailingListSet
ADD CONSTRAINT PK_MailingListSet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** key on [Id] in table 'MailingListSubscriptionSet'
ALTER TABLE MailingListSubscriptionSet
ADD CONSTRAINT PK_MailingListSubscriptionSet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** key on [Id] in table 'MailTemplateSet'
ALTER TABLE MailTemplateSet
ADD CONSTRAINT PK_MailTemplateSet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** key on [Id] in table 'MailingSet'
ALTER TABLE MailingSet
ADD CONSTRAINT PK_MailingSet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** key on [Id] in table 'MailingMailSet'
ALTER TABLE MailingMailSet
ADD CONSTRAINT PK_MailingMailSet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** key on [Id] in table 'MailingPropertySet'
ALTER TABLE MailingPropertySet
ADD CONSTRAINT PK_MailingPropertySet
    PRIMARY KEY (Id);
 

-- SQLINES DEMO *** ---------------------------------
-- SQLINES DEMO *** IGN KEY constraints
-- SQLINES DEMO *** ---------------------------------

-- SQLINES DEMO *** key on [Domain_Id] in table 'MailboxSet'
ALTER TABLE MailboxSet
ADD CONSTRAINT FK_DomainMailbox
    FOREIGN KEY (Domain_Id)
    REFERENCES DomainSet
        (Id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 

-- SQLINES DEMO *** tered index for FOREIGN KEY 'FK_DomainMailbox'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX IX_FK_DomainMailbox
ON MailboxSet
    (Domain_Id);
 

-- SQLINES DEMO *** key on [Contact_Id] in table 'PropertySet'
ALTER TABLE PropertySet
ADD CONSTRAINT FK_ContactProperty
    FOREIGN KEY (Contact_Id)
    REFERENCES ContactSet
        (Id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 

-- SQLINES DEMO *** tered index for FOREIGN KEY 'FK_ContactProperty'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX IX_FK_ContactProperty
ON PropertySet
    (Contact_Id);
 

-- SQLINES DEMO *** key on [Contact_Id] in table 'MailingListSubscriptionSet'
ALTER TABLE MailingListSubscriptionSet
ADD CONSTRAINT FK_ContactMailingListSubscription
    FOREIGN KEY (Contact_Id)
    REFERENCES ContactSet
        (Id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 

-- SQLINES DEMO *** tered index for FOREIGN KEY 'FK_ContactMailingListSubscription'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX IX_FK_ContactMailingListSubscription
ON MailingListSubscriptionSet
    (Contact_Id);
 

-- SQLINES DEMO *** key on [MailingList_Id] in table 'MailingListSubscriptionSet'
ALTER TABLE MailingListSubscriptionSet
ADD CONSTRAINT FK_MailingListMailingListSubscription
    FOREIGN KEY (MailingList_Id)
    REFERENCES MailingListSet
        (Id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 

-- SQLINES DEMO *** tered index for FOREIGN KEY 'FK_MailingListMailingListSubscription'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX IX_FK_MailingListMailingListSubscription
ON MailingListSubscriptionSet
    (MailingList_Id);
 

-- SQLINES DEMO *** key on [Mailbox_Id] in table 'MailingSet'
ALTER TABLE MailingSet
ADD CONSTRAINT FK_MailboxMailing
    FOREIGN KEY (Mailbox_Id)
    REFERENCES MailboxSet
        (Id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 

-- SQLINES DEMO *** tered index for FOREIGN KEY 'FK_MailboxMailing'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX IX_FK_MailboxMailing
ON MailingSet
    (Mailbox_Id);
 

-- SQLINES DEMO *** key on [Mailing_Id] in table 'MailingMailSet'
ALTER TABLE MailingMailSet
ADD CONSTRAINT FK_MailingMailingMail
    FOREIGN KEY (Mailing_Id)
    REFERENCES MailingSet
        (Id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 

-- SQLINES DEMO *** tered index for FOREIGN KEY 'FK_MailingMailingMail'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX IX_FK_MailingMailingMail
ON MailingMailSet
    (Mailing_Id);
 

-- SQLINES DEMO *** key on [Mailing_Id] in table 'MailingPropertySet'
ALTER TABLE MailingPropertySet
ADD CONSTRAINT FK_MailingMailingPayload
    FOREIGN KEY (Mailing_Id)
    REFERENCES MailingSet
        (Id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 

-- SQLINES DEMO *** tered index for FOREIGN KEY 'FK_MailingMailingPayload'
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE INDEX IX_FK_MailingMailingPayload
ON MailingPropertySet
    (Mailing_Id);
 

-- SQLINES DEMO *** ---------------------------------
-- Script has ended
-- SQLINES DEMO *** ---------------------------------
 

   

INSERT INTO ConfigurationSet (fqdn, subdomainname, outboundipv4, outboundipv6, sshusername, sshprivatekey, hostname, mailcowapikey,instanceid,jwtsecret,jwtaudience,jwtissuer,Miniosecret,Minioaccesskey,Minioendpoint)
	VALUES ('{FQDN}', '{SUBDOMAIN}', '{IPV4}', '{IPV6}', '{SSHUSER}', '{SSHKEY}', '{HOSTNAME}', '{MAIL_COWAPIKEY}','{INSTANCEID}','{JWT_SECRET}','{JWT_AUDIENCE}','{JWT_ISSUER}','{MINIO_SECRET}','{MINIO_ACCESSKEY}','{MINIO_ENDPOINT}');

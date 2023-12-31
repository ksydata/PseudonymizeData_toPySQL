# MySQL DBMS에 Load Data Infile하기

- Command Prompt에 local 대용량 파일을 불러올 수 있도록 설정하는 명령어
    
    ```bash
    C:\Users\sooyeon Kang
    >$cd "C:/Program Files/MySQL/MySQL Server 8.0/bin"
    
    C:\Program Files\MySQL\MySQL Server 8.0\bin
    >$mysql -u root -p
    Enter password: ****
    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 18
    Server version: 8.0.34 MySQL Community Server - GPL
    
    Copyright (c) 2000, 2023, Oracle and/or its affiliates.
    
    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.
    
    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
    
    mysql
    >$show variables like "local_infile";
    +---------------+-------+
    | Variable_name | Value |
    +---------------+-------+
    | local_infile  | OFF   |
    +---------------+-------+
    1 row in set (0.01 sec)
    
    mysql
    >$set global local_infile = 1;
    Query OK, 0 rows affected (0.00 sec)
    
    mysql
    >$show variables like "local_infile";
    +---------------+-------+
    | Variable_name | Value |
    +---------------+-------+
    | local_infile  | ON    |
    +---------------+-------+
    1 row in set (0.01 sec)
    ```
    

- MySQL Workbench에서 csv데이터를 import하는 법
    
    MySQL 콘솔창에서 실행하는 경우에는 다음과 같은 옵션을 준다.
    
    `MySQL Connections`에서 설정을 변경
    
    Connect to Database > Advanced > Others > `OPT_LOCAL_INFILE=1`
    
    ![Untitled](https://github.com/ksydata/PseudonymizeData_toPySQL/assets/112922030/fa3784a9-1dc2-4454-8278-42bb9517e276)
  
- **Database Schema ∙ Table 생성하기**
    
    ![Untitled 1](https://github.com/ksydata/PseudonymizeData_toPySQL/assets/112922030/794669fb-f1fe-4b7a-ac07-b7e708369957)

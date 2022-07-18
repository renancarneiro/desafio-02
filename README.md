
## 👨🏼‍💻 Author

- [@renancarneiro](https://www.github.com/renancarneiro)

## 🚀 Technology

- [Workbench](https://www.github.com/renancarneiro)

MySQL Workbench is a unified visual tool for database architects, developers, and DBAs. MySQL Workbench provides data modeling, SQL development, and comprehensive administration tools for server configuration, user administration, backup, and much more. MySQL Workbench is available on Windows, Linux and Mac OS X.

## ⚡️ Installation and execution



Clone project

```bash
  git clone https://github.com/renancarneiro/desafio-02.git
```

Enter the project directory

```bash
  cd desafio-02
```

#### Install workbench and configure


If you are trying to connect to your local database server and it might not have SSL configured. In this case we can’t connect to the Workbench directly.

#### To disable the SSL requirement we have to add the value useSSL=0 in the Advanced tab.

    1. Go to Database menu
    2. Connect to Database
    3.  You may see a window like below and click on Adbanced tab



![config](https://codersathi.com/wp-content/uploads/2021/12/useSSLzero.png)

    5. After adding the useSSL=0 you may be able to connect to your database without any issue

## ⭐Relational data model with MySQL workbench

![config](https://raw.githubusercontent.com/renancarneiro/desafio-02/main/diagram.png)


### Cleaner (Diarista)

| Variable               | Describe                                                |
| ----------------- | ---------------------------------------------------------------- |
| id       | identificador da diarista |
| name       | nome da diarista |
| cpf       | cpf da diarista |

### House_owner (Proprietário)

| Variable               | Describe                                                |
| ----------------- | ---------------------------------------------------------------- |
| id       | identificador do proprietário |
| name       | nome do proprietário |
| cpf       | cpf do proprietário |

### House (Residência)

| Variable               | Describe                                                |
| ----------------- | ---------------------------------------------------------------- |
| id       | identificador da residência |
| city       | cidade da residência |
| neighborhood       | bairro da residência |
| street       | rua ou passagem |
| number       | numero da residência |
| additional_address       | complemento |
| type       | tamanho da residência |
| house_owner_id       | id do responsável da residência |

### Cleaning Schedule (Agendamento de faxina)

| Variable               | Describe                                                |
| ----------------- | ---------------------------------------------------------------- |
| id       | identificador do agendamento |
| cleaner_id       | identificador da diarista |
| house_id       | identificador da residencia |
| date_cleaning       | data da faxina |

### Feedback Cleaning Service (Retorno e pagamento do serviço prestado)

| Variable               | Describe                                                |
| ----------------- | ---------------------------------------------------------------- |
| id       | identificador do feedback |
| finished_cleaning       | faxina realiza ou não (boleano) |
| payment       | valor do pagamento do serviço prestado |
| feedback       | feedback do proprietário sobre o serviço prestado pela diarista |
| cleaning_schedule_id       | identificador do agendamento |
| cleaning_schedule_cleaner       | identificador da diarista |
| cleaning_schedule_house       | identificador da residência
 |

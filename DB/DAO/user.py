from DAO.index import *
from DTO.user import User


class UserDAO(Index):
    __CHECK_BY_EMAIL = "SELECT _index, id, name, email FROM user WHERE email = %s";

    def select_index(self, user):
        return self.execute_sql_for_one_result(user,
                                               """SELECT _index
                                               FROM User
                                               WHERE id = %s""")

    def is_existing_email(self, email):
        return self.execute_sql_for_one_result(email,
                                               """SELECT EXISTS (
                                               SELECT *
                                               FROM User
                                               WHERE email = %s)""")

    def select_by_email(self, email):
        result = self.execute_sql_for_one_result(email, UserDAO.__CHECK_BY_EMAIL)
        print(result)
        user = User(result[1], result[2], result[3], result[0])
from flask import Flask, Blueprint, render_template, request, jsonify, session
from DB.DAO.personal_keyword import PersonalKeywordDAO

update_keyword_bp = Blueprint('update_keyword', __name__)

# 키워드 db 클래스 생성
personal_keywordDB = PersonalKeywordDAO()


# 입력 받은 DB에 전송 후 키워드 리로드
@update_keyword_bp.route('/update_keyword', methods=['POST'])
def update_keyword():
    # db에 추출한 keyword, id 넣기
    personal_keywordDB.insert_keyword(session['id'], request.form['keyword'])

    # id가 1인 키워드 전부 출력
    keywords = personal_keywordDB.select_keywords(session['id'])

    # 키워드를 string 으로
    keywords_str = ', '.join(keywords)

    return jsonify(keywords_str)
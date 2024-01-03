# Futsal Team Management App
- 웹・앱 기반의 풋살 팀 운영 서비스
- 팀 인원, 일정 등 관리 효율화

## 주요 기능

**1. 로그인 / 로그아웃**
- 계정별 권한 부여
  - Admin
  - User (Coach / Captain / Member)
  - Guest
- SNS 계정 연동

**2. 일정 관리**
- 일정 등록 (Admin)
- 일정 참여 (Admin / User / Guest)
- 일정 조회
  - 일정 리스트 UI
  - 일정 캘린더 UI
    - [FullCalendar](https://fullcalendar.io/)
      - JavaScript 기반 오픈소스 캘린더 라이브러리
      - ref. [https://dodokong.tistory.com/41](https://dodokong.tistory.com/41)
    - [카카오 캘린더 API](https://developers.kakao.com/docs/latest/ko/talkcalendar/rest-api)
      - 공유 캘린더 지원 X (향후 지원 예정)
    - [구글 캘린더 API](https://developers.google.com/calendar/api/guides/overview?hl=ko)
      - 공유 캘린더 지원 O
- Option
    - 날짜
    - 시간
    - 장소
    - 픽업
    - 댓글

**3. 일정 자동 알림**
- 등록된 일정과 연동하여 D-N일 전에 알림톡 발송
  - ref. [https://developers.kakao.com/docs/latest/ko/message/rest-api](https://developers.kakao.com/docs/latest/ko/message/rest-api)
  - 현재 나에게 / 친구에게 보내기만 지원 (단체 채팅방에 보내는 것은 불가능)

**4. 사진 게시판**
- 일정과 연동

**5. 매치 신청**
- 매치 신청
- 매치 수락
- 자동 일정 추가

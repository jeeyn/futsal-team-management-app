# Table
**`bold`** 카카오 로그인 API를 통해 제공받는 정보

### user
* **email** (PK) > 중복 체크 필요
* password
* teamId (FK)
* **userName**
* type
* nickname > 중복 체크 필요
* **gender**
* **birthDate**
* **phoneNumber**
* image > 검토 필요

### team
* teamId (PK)
* teamName

<br/>

## Feature
* Only start with kakao account
  * Flow : 카카오 API 키를 이용해 사용자 유효성 검증 → 인가코드 발급 요청 → 인가코드를 Redirect URI에 등록된 곳으로 반환 → 인가코드로 Access token 발급 요청 → Access token 발급 → Access token으로 사용자 정보 요청

<br/>

## To Do
1. 화면 구현
2. kakao developer 설정
* API Key 발급
* 플랫폼 설정
  * 사이트 도메인 등록
  * Redirect URI 등록
  * 동의 항목 설정
3. 기능 구현

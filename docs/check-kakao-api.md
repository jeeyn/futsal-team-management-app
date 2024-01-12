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

<br/>

## Reference
* [kakao developers | 카카오 로그인 API](https://developers.kakao.com/docs/latest/ko/kakaologin/common)
* [좋은 소프트웨어 설계의 조건](https://yozm.wishket.com/magazine/detail/1884/)
* [OAuth 2.0 개념과 동작 원리](https://hudi.blog/oauth-2.0/)
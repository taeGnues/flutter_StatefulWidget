# 기본적인 flutter의 StatefulWdiget을 공부합니다.

## StatefulWidget의 라이프사이클 - 위젯 생성 및 삭제

<StatefulWidget>
Constructor -> createState

<State>
initState -> didChangeDependencies -> dirty상태 -> build -> clean상태 -> deactivate -> dispose

## StatefulWidget의 라이프사이클 - 위젯 생성 된 후 parameter 바뀔 시

<StatefulWidget>
기존 위젯 삭제 후 Constructor -> 기존 위젯의 State 찾기

<State>
didUpdateWidget -> dirty -> build -> clean

## StatefulWidget의 라이프 사이클 - setState 실행 시

<State>
setState 실행 -> dirty -> build -> clean

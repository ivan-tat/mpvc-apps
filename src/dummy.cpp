// Файл-пустышка для замены оригинальной Windows-программы.
// Автор: Татаринов Иван Иванович (ivan-tat@ya.ru), 2016.
//
// Это свободное и необременённое программное обеспечение, переданное в
// общественное достояние. Подробнее см. http://unlicense.org

#include <windows.h>

WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
	MessageBox( NULL, "Вы запустили файл-пустышку.\n" \
		"Для получения оригинального файла обратитесь к разработчику.",
		"Информация", MB_OK | MB_ICONEXCLAMATION | MB_DEFAULT_DESKTOP_ONLY );
	return 0;
}

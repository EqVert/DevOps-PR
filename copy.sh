#!Копіювання файлів користувача в архів

# Змінні шляхів
# SOURCE_FILE="$HOME/example.txt"
SOURCE_DIR="$HOME/docs"
BACKUP_DIR="/backup"

# Створення папки для резервних копій, якщо вона не існує
mkdir -p "$BACKUP_DIR"

# Отримання поточної дати та часу для імені файлу
CURRENT_DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Ім'я файлу архіву
ARCHIVE_NAME="backup-$CURRENT_DATE.tar.gz"

# Створення архіву з файлів, виключаючи .dat файли
tar -czvf "$BACKUP_DIR/$ARCHIVE_NAME" --exclude='*.dat' -C "$SOURCE_DIR" .

echo "Резервне копіювання у файл $ARCHIVE_NAME завершено!"
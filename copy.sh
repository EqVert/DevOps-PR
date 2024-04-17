#!Копіювання файлів користувача

# Змінні шляхів
SOURCE_FILE="$HOME/example.txt"
SOURCE_DIR="$HOME/docs"
BACKUP_DIR="/backup"

# Створення папки для резервних копій, якщо вона не існує
mkdir -p "$BACKUP_DIR"

# Копіювання файлів і папок у папку для резервних копій
cp "$SOURCE_FILE" "$BACKUP_DIR"
cp -r "$SOURCE_DIR" "$BACKUP_DIR"

echo "Резервне копіювання завершено!"
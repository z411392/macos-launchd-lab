def main():
    from datetime import datetime
    from pathlib import Path
    current_dir = Path(__file__).resolve().parent
    output_path = current_dir.parent / "output.txt"

    with open(output_path, "a", encoding="utf-8") as handle:
        now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        handle.write(f"{now}\n")


if __name__ == "__main__":
    main()

import Vapor

func routes(_ app: Application) throws {
    app.get { _ in
        Response(
            status: .ok,
            headers: ["content-type": "text/html; charset=utf-8"],
            body: .init(string: landingPageHTML)
        )
    }
}

private let landingPageHTML = """
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Старт проекта</title>
    <style>
        :root {
            color-scheme: dark;
            --bg: #081120;
            --card: rgba(12, 25, 49, 0.78);
            --accent: #7dd3fc;
            --accent-2: #c084fc;
            --text: #f8fafc;
            --muted: #cbd5e1;
            --border: rgba(148, 163, 184, 0.22);
            --shadow: 0 24px 80px rgba(8, 17, 32, 0.45);
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            min-height: 100vh;
            display: grid;
            place-items: center;
            font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
            background:
                radial-gradient(circle at top left, rgba(125, 211, 252, 0.22), transparent 30%),
                radial-gradient(circle at bottom right, rgba(192, 132, 252, 0.24), transparent 35%),
                linear-gradient(135deg, #020617 0%, #0f172a 55%, #111827 100%);
            color: var(--text);
            padding: 24px;
        }

        .card {
            width: min(760px, 100%);
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: 28px;
            padding: 48px;
            box-shadow: var(--shadow);
            backdrop-filter: blur(18px);
            position: relative;
            overflow: hidden;
        }

        .card::before,
        .card::after {
            content: "";
            position: absolute;
            border-radius: 50%;
            filter: blur(12px);
            opacity: 0.8;
        }

        .card::before {
            width: 180px;
            height: 180px;
            background: rgba(125, 211, 252, 0.16);
            top: -72px;
            right: -42px;
        }

        .card::after {
            width: 220px;
            height: 220px;
            background: rgba(192, 132, 252, 0.12);
            bottom: -110px;
            left: -80px;
        }

        .badge {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 10px 16px;
            border-radius: 999px;
            background: rgba(125, 211, 252, 0.12);
            color: var(--accent);
            font-size: 14px;
            letter-spacing: 0.04em;
            text-transform: uppercase;
            border: 1px solid rgba(125, 211, 252, 0.2);
        }

        h1 {
            margin: 22px 0 18px;
            font-size: clamp(40px, 8vw, 72px);
            line-height: 0.96;
            letter-spacing: -0.04em;
        }

        p {
            margin: 0;
            font-size: 18px;
            line-height: 1.7;
            color: var(--muted);
            max-width: 56ch;
        }

        .highlight {
            color: white;
        }

        .gradient {
            background: linear-gradient(90deg, var(--accent) 0%, var(--accent-2) 100%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .actions {
            margin-top: 32px;
            display: flex;
            flex-wrap: wrap;
            gap: 14px;
        }

        .action {
            padding: 14px 18px;
            border-radius: 14px;
            background: rgba(15, 23, 42, 0.85);
            border: 1px solid rgba(148, 163, 184, 0.18);
            color: var(--text);
            text-decoration: none;
            font-weight: 600;
        }

        .action.secondary {
            color: var(--muted);
        }

        .footer {
            margin-top: 28px;
            display: flex;
            align-items: center;
            gap: 10px;
            color: rgba(203, 213, 225, 0.85);
            font-size: 15px;
        }

        .spark {
            font-size: 18px;
        }

        @media (max-width: 640px) {
            .card {
                padding: 32px 24px;
                border-radius: 22px;
            }

            p {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <main class="card">
        <div class="badge">Vapor server is live</div>
        <h1>
            С запуском
            <span class="gradient">нового проекта!</span>
        </h1>
        <p>
            Поздравляю со <span class="highlight">стартом разработки</span>.
            Сервер на Swift Vapor успешно работает и уже отдает первую красивую страницу.
            Пусть этот проект приносит вдохновение, уверенный прогресс и классные результаты.
        </p>
        <div class="actions">
            <a class="action" href="/">Обновить страницу</a>
            <a class="action secondary" href="https://vapor.codes" target="_blank" rel="noreferrer">Документация Vapor</a>
        </div>
        <div class="footer">
            <span class="spark">✨</span>
            <span>Первый экран готов — можно двигаться дальше.</span>
        </div>
    </main>
</body>
</html>
"""

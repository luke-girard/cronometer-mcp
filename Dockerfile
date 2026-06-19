FROM python:3.12-slim
WORKDIR /app
COPY pyproject.toml README.md ./
COPY cronometer_mcp ./cronometer_mcp
RUN pip install --no-cache-dir .
ENV PORT=8000
EXPOSE 8000
CMD ["cronometer-mcp"]

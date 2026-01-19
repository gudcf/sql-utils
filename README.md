# 🐘 PostgreSQL Utils

Coleção de scripts SQL que utilizo no dia a dia para manter a saúde e performance dos bancos de dados das minhas automações (n8n, Typebot, Chatwoot).

## 📂 Conteúdo

### 🚀 Performance
* `find_slow_queries.sql`: Identifica gargalos e queries que estão travando o sistema.
* `index_usage.sql`: Verifica se os índices estão sendo usados corretamente.

### 🛠️ Manutenção
* `check_table_sizes.sql`: Monitora o crescimento das tabelas (essencial para limpar logs de execução do n8n).
* `kill_idle_connections.sql`: Script de emergência para limpar conexões fantasmas.

## 💻 Como usar
Basta copiar a query e rodar no seu gerenciador preferido (DBeaver, PGAdmin ou terminal `psql`).

---
*Focado em PostgreSQL 14+*

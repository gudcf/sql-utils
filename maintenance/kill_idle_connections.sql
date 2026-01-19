-- 🚑 Derrubar conexões 'idle' (ociosas) que estão travando o banco
-- CUIDADO: Use apenas em caso de emergência quando o pool de conexões estourar

SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE state = 'idle'
AND state_change < current_timestamp - INTERVAL '30 minutes'
AND pid <> pg_backend_pid(); -- Não se matar

-- 🔍 Encontrar as 10 queries mais lentas no banco
-- Útil para identificar gargalos em workflows do n8n ou relatórios lentos

SELECT 
    pid, 
    now() - pg_stat_activity.query_start AS duration, 
    query, 
    state
FROM pg_stat_activity 
WHERE (now() - pg_stat_activity.query_start) > interval '100 milliseconds'
AND state != 'idle' 
ORDER BY duration DESC 
LIMIT 10;

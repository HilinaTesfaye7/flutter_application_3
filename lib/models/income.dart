class Income
{
  int id;
  int virtual_Reality;
  int play_station;
  int dstv;
  int betting;
  int pool;
  int coffee_Tea;

  Income(
     this.id,
     this.virtual_Reality,
     this.play_station,
     this.dstv,
     this.betting,
     this.pool,
     this.coffee_Tea
  );
  Map<String, dynamic>toJson()=>
  {
    'id':id.toString(),
    'virtual_Reality':virtual_Reality.toString(),
    'play_station':play_station.toString(),
    'dstv':dstv.toString(),
    'betting':betting.toString(),
    'pool':pool.toString(),
    'coffee_Tea':coffee_Tea.toString(),
  };
}
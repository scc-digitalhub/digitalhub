from kfp import dsl
import mlrun

URL = "https://opendata.comune.bologna.it/api/explore/v2.1/catalog/datasets/disponibilita-parcheggi-storico/exports/csv?lang=it&timezone=UTC&use_labels=true&delimiter=%3B"

@dsl.pipeline(name="Parking data pipeline")
def parking_pipeline():
    project = mlrun.get_current_project()

    run_download = project.run_function("download-all",inputs={'url':URL}, outputs=["dataset"])

    run_parkings = project.run_function("extract-parkings", inputs={'di':run_download.outputs["dataset"]}, outputs=["parkings"])

    run_aggregate = project.run_function("aggregate-parkings", inputs={'di':run_download.outputs["dataset"]}, outputs=["parking_data_aggregated"])
    
    project.run_function("to-db", inputs={'agg_di': run_aggregate.outputs["parking_data_aggregated"], 'parkings_di': run_parkings.outputs["parkings"]})
